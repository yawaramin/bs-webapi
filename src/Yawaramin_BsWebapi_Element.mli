(**)

type intf = [Yawaramin_BsWebapi_Node.intf | `element]
type 'a t = ([> intf] as 'a) Yawaramin_BsWebapi_Common.t

external className: 'a t -> string = "" [@@bs.get]
external setClassName: 'a t -> string -> unit = "className" [@@bs.set]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast:
  [< intf] Yawaramin_BsWebapi_Common.t ->
  intf Yawaramin_BsWebapi_Common.t option
