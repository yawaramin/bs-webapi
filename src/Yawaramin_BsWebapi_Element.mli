(** The most general base class from which all objects in a [Document]
    inherit.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/Element} https://developer.mozilla.org/en-US/docs/Web/API/Element} *)

module Common = Yawaramin_BsWebapi_Common

type intf = [Yawaramin_BsWebapi_Node.intf | `element]

external className: [> intf] Common.t -> string = "" [@@bs.get]
external setClassName: [> intf] Common.t -> string -> unit =
  "className" [@@bs.set]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast: [< intf] Common.t -> intf Common.t option
