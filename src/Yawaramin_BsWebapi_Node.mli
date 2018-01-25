(**)

module Common = Yawaramin_BsWebapi_Common

type intf = [Yawaramin_BsWebapi_EventTarget.intf | `node]

external baseURI: [> intf] Common.t -> string = "" [@@bs.get]

(** [cast t] downcasts an [EventTarget] to a [Node]. *)
val cast: [< intf] Common.t -> intf Common.t option
