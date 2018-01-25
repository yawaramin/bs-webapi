module Common = Yawaramin_BsWebapi_Common

type 'a t = 'a Common.t
type intf = [`eventTarget]
type options = < capture: bool; once: bool; passive: bool > Js.t

external make: unit -> intf Common.t = "EventTarget" [@@bs.new]

external addEventListener:
  type_:string ->
  listener:([
  | `eventListener of 'a Common.eventListener
  | `eventHandler of 'a Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of options
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit = "" [@@bs.send.pipe: [> intf] Common.t]
