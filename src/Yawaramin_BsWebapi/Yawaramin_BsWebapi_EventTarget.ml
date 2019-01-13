(**)

(** A DOM object starting from [EventTarget] and extending to any of its
    subtypes.

    The type parameter is a phantom type (a 'tag') that represents the
    exact subtype of [EventTarget] that you're dealing with. E.g., if you
    have a [\[< this\] Yawaramin_BsWebapi_Element.supertype], that means
    you have something that implements the [Element] (and by extension
    [Node] and [EventTarget]) interfaces.

    Thus, you can use any of the operations from those modules on values
    of that type. But you can't use operations from modules which
    represent subtypes--unless you downcast the value to that subtype.

    Downcasting is implemented by each module with the [cast] function,
    which safely downcasts by testing the value for a crucial member
    property it must have to conform to the target type. If it does
    conform, the cast function returns the downcast value wrapped in a
    [Some]; if not, it returns a [None]. *)
type _ t
type this = [`eventTarget]

type _ event
type 'a eventHandler = 'a event -> unit [@bs]
type 'a eventListener = < handleEvent: 'a eventHandler > Js.t

external make: unit -> this t = "EventTarget" [@@bs.new]

external addEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a eventListener
  | `eventHandler of 'a eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; once: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit =
  "" [@@bs.send.pipe: 'a t]

external removeEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a eventListener
  | `eventHandler of 'a eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit =
  "" [@@bs.send.pipe: 'a t]
  
external dispatchEvent: 'a t -> 'a event -> unit = "" [@@bs.send]
