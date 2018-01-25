(**)

module Common = Yawaramin_BsWebapi_Common
type intf = [`eventTarget]

external make: unit -> intf Common.t = "EventTarget" [@@bs.new]

(** {b [addEventListener ~typ ~listener ?options t]}. Register an event
    handler of a specific event type on the [EventTarget]. See
    {{: } https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener}

    [listener] must contain an event handler BuckleScript uncurried
    function. *)
external addEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Common.eventListener
  | `eventHandler of 'a Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; once: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit = "" [@@bs.send.pipe: [> intf] Common.t]

(** {b [removeEventListener ~typ ~listener ?options t]}. Removes an event
    listener from the [EventTarget]. See
    {{: } https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener}

    [listener] must contain an event handler BuckleScript uncurried
    function. *)
external removeEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Common.eventListener
  | `eventHandler of 'a Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit = "" [@@bs.send.pipe: [> intf] Common.t]
  
(** Dispatches an [Event] at the specified [EventTarget], invoking the
    affected [EventListeners] in the appropriate order. See
    {{: } https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent} *)
external dispatchEvent:
  ([> intf] as 'a) Common.t -> 'a Common.event -> unit = "" [@@bs.send]
