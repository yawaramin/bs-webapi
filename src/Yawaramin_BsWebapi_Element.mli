(**)

module Common = Yawaramin_BsWebapi_Common

type intf = [Yawaramin_BsWebapi_Node.intf | `element]

external className: [> intf] Common.t -> string = "" [@@bs.get]
external setClassName: [> intf] Common.t -> string -> unit =
  "className" [@@bs.set]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast: [< intf] Common.t -> intf Common.t option
