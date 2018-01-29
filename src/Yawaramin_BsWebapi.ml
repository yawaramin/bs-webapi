(** The entry point to the Web API. *)

(** Common WebAPI types and operations. Mostly the ones that are the
    roots of their inheritance hierarchies. *)
module Common = Yawaramin_BsWebapi_Common

(** Interface implemented by objects that can receive events and may have
    listeners for them. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/EventTarget}https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} *)
module EventTarget = Yawaramin_BsWebapi_EventTarget

(** Interface from which a number of DOM API object types inherit. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/Node}https://developer.mozilla.org/en-US/docs/Web/API/Node} *)
module Node = Yawaramin_BsWebapi_Node

(** A DOM element's attribute as an object. See {{: https://developer.mozilla.org/en-US/docs/Web/API/Attr} https://developer.mozilla.org/en-US/docs/Web/API/Attr} *)
module Attr = Yawaramin_BsWebapi_Attr

(** A collection of [Attr] objects. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap}https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap} *)
module NamedNodeMap = Yawaramin_BsWebapi_NamedNodeMap

(** Methods that are particular to [Node] objects that can have a parent,
    but not suitable for [DocumentType]. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode}https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode} *)
module NonDocumentTypeChildNode =
  Yawaramin_BsWebapi_NonDocumentTypeChildNode

(** Generic collection (array-like object similar to arguments) of
    elements (in document order) and methods and properties for selecting
    from the list. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection}https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection} *)
module HTMLCollection = Yawaramin_BsWebapi_HTMLCollection

(** Standard way to produce a sequence of values (either finite or
    infinite). See
    {{:https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterator_protocol}https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterator_protocol} *)
module Iterator = Yawaramin_BsWebapi_Iterator

(** Collections of nodes such as those returned by properties such as
    [Node.childNodes] and the [document.querySelectorAll()] method. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NodeList}https://developer.mozilla.org/en-US/docs/Web/API/NodeList} *)
module NodeList = Yawaramin_BsWebapi_NodeList

(** Methods and properties that are common to all types of Node objects
    that can have children. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/ParentNode}https://developer.mozilla.org/en-US/docs/Web/API/ParentNode} *)
module ParentNode = Yawaramin_BsWebapi_ParentNode

(** The most general base class from which all objects in a [Document]
    inherit. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/Element}https://developer.mozilla.org/en-US/docs/Web/API/Element} *)
module Element = Yawaramin_BsWebapi_Element
