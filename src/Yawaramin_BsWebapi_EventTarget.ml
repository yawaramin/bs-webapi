module Common = Yawaramin_BsWebapi_Common

type intf = [`eventTarget]

external make: unit -> intf Common.t = "EventTarget" [@@bs.new]

external addEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Common.eventListener
  | `eventHandler of 'a Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; once: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit = "" [@@bs.send.pipe: [> intf] Common.t]

external removeEventListener:
  typ:string ->
  listener:([
  | `eventListener of 'a Common.eventListener
  | `eventHandler of 'a Common.eventHandler] [@bs.unwrap]) ->
  ?options:([
  | `options of < capture: bool; passive: bool > Js.t
  | `useCapture of bool ] [@bs.unwrap]) ->
  unit = "" [@@bs.send.pipe: [> intf] Common.t]
  
external dispatchEvent:
  ([> intf] as 'a) Common.t -> 'a Common.event -> unit = "" [@@bs.send]
