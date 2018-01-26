(**)

type intf = [`eventTarget]
type 'a t = ([> intf] as 'a) Yawaramin_BsWebapi_Common.t

external make: unit -> intf Yawaramin_BsWebapi_Common.t =
  "EventTarget" [@@bs.new]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is an ['a EventTarget.t]
    value). *)
external addEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Yawaramin_BsWebapi_Common.eventListener
  | `eventHandler of 'a Yawaramin_BsWebapi_Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; once: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
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
  | `options of < capture: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit =
  "" [@@bs.send.pipe: 'a t]
  
external dispatchEvent:
  'a t -> 'a Yawaramin_BsWebapi_Common.event -> unit =
  "" [@@bs.send]
