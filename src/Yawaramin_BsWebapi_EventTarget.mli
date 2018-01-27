(**)

type this = [`eventTarget]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external make: unit -> this Yawaramin_BsWebapi_Common.t =
  "EventTarget" [@@bs.new]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is an ['a EventTarget.t]
    value). *)
external addEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Yawaramin_BsWebapi_Common.eventListener
  | `eventHandler of 'a Yawaramin_BsWebapi_Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: Js.boolean; once: Js.boolean; passive: Js.boolean > Js.t
  | `useCapture of Js.boolean ] [@bs.unwrap]) ->
  unit =
  "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is an ['a EventTarget.t]
    value). *)
external removeEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Yawaramin_BsWebapi_Common.eventListener
  | `eventHandler of 'a Yawaramin_BsWebapi_Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: Js.boolean; passive: Js.boolean > Js.t
  | `useCapture of Js.boolean ] [@bs.unwrap]) ->
  unit =
  "" [@@bs.send.pipe: 'a t]

external dispatchEvent: 'a t -> 'a Yawaramin_BsWebapi_Common.event -> unit = "" [@@bs.send]
