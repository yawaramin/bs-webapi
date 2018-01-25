(** The most general base class from which all objects in a [Document]
    inherit.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/Element} https://developer.mozilla.org/en-US/docs/Web/API/Element} *)

type 'a t = 'a Yawaramin_BsWebapi_Common.t
type intf = [Yawaramin_BsWebapi_Node.intf | `element]

external className: [> intf] t -> string = "" [@@bs.get]
external setClassName: [> intf] t -> string -> unit =
  "className" [@@bs.set]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast: [< intf] t -> intf t option
