(** Interface implemented by objects that can receive events and may have
    listeners for them.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} *)

type 'a t = 'a Yawaramin_BsWebapi_Common.t
type intf = [`eventTarget]
type options = < capture: bool; once: bool; passive: bool > Js.t

external make: unit -> intf t = "EventTarget" [@@bs.new]

(** [addEventListener ~type_ ~listener ?options t] adds an event handler
    [listener], of type [type_], with options [options], to the event
    target [t].

    [listener] must be a BuckleScript uncurried function, e.g.
    [fun \[\@bs\] () -> Js.log "Hello, World!"].
*)
external addEventListener:
  type_:string ->
  listener:(unit -> unit [@bs]) ->
  ?options:options ->
  unit = "" [@@bs.send.pipe: [> intf] t]
