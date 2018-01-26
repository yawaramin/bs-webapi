(**)

type this = [Yawaramin_BsWebapi_Node.this | `element]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external className: 'a t -> string = "" [@@bs.get]
external setClassName: 'a t -> string -> unit = "className" [@@bs.set]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast:
  [< this] Yawaramin_BsWebapi_Common.t ->
  this Yawaramin_BsWebapi_Common.t option
