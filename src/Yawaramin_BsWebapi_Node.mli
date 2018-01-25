(** Interface from which a number of DOM API object types inherit.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/Node} https://developer.mozilla.org/en-US/docs/Web/API/Node} *)

type 'a t = 'a Yawaramin_BsWebapi_Common.t
type intf = [Yawaramin_BsWebapi_EventTarget.intf | `node]

external baseURI: [> intf] t -> string = "" [@@bs.get]

(** [cast t] downcasts an [EventTarget] to a [Node]. *)
val cast: [< intf] t -> intf t option
