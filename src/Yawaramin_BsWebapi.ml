(** The Web API. *)

(** Definitions common to the entire Web API. *)
module Common = Yawaramin_BsWebapi_Common

(** Interface implemented by objects that can receive events and may have
  listeners for them.

  See
  {{: https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} *)
module EventTarget = Yawaramin_BsWebapi_EventTarget

(** Interface from which a number of DOM API object types inherit.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/Node} https://developer.mozilla.org/en-US/docs/Web/API/Node} *)
module Node = Yawaramin_BsWebapi_Node

(** The most general base class from which all objects in a [Document]
    inherit.

    See
    {{: https://developer.mozilla.org/en-US/docs/Web/API/Element} https://developer.mozilla.org/en-US/docs/Web/API/Element} *)
module Element = Yawaramin_BsWebapi_Element
