(** {!indexlist}

    BuckleScript bindings to the
    {{:https://developer.mozilla.org/en-US/docs/Web/API}Web API}.

    {b Warning:} this is a work in progress. Don't use in production.

    {{:https://github.com/yawaramin/bs-webapi}GitHub}

    These bindings are organised into modules that correspond to the API
    class hierarchy. All modules in the hierarchy share a common
    [EventTarget] modelled as an abstract type. If you have a value of,
    say, an [HTMLElement], you will be able to manipulate it with the
    relevant functions in all the modules which represent its supertypes
    in the hierarchy--so, [Element], [Node], and [EventTarget].

    This means that you can, for example, directly add an event listener
    to any HTML element just by using the
    {!val:Yawaramin_BsWebapi_EventTarget.addEventListener} function. You
    can also {i downcast} a value to a subtype and then call the relevant
    functions with that. Downcasting is done safely (by checking if the
    value you provided supports a crucial property of the type you want)
    so you will always have to account for possible failure to downcast.

    Hopefully, this type safety also translates to errors that are easier
    to understand. For example:

    {v We've found a bug for you!
      /Users/yawar/src/bs-webapi/src/Yawaramin_BsWebapi_Test.ml 4:25-30

      1 | module Web = Yawaramin_BsWebapi
      2 | let test (target: Web.EventTarget.this Web.Common.t): int =
      3 |   Web.Element.className target

      This has type:
        Web.EventTarget.this Web.Common.t (defined as
          Web.EventTarget.this Yawaramin_BsWebapi_Common.t)
      But somewhere wanted:
        ([> Web.Element.this ] as 'a) Web.Element.subtype (defined as
          'a Yawaramin_BsWebapi_Common.t)

      The incompatible parts:
        Web.EventTarget.this (defined as [ `eventTarget ])
        vs
        'a (defined as [> `element | `eventTarget | `node ])
      The first variant type does not allow tag(s) `element, `node v}

    We would read this as: 'this has type "EventTarget Common", but
    somewhere wanted "Element subtype" '. In other words, we have only an
    [EventTarget], but the operation we are trying to do requires an
    [Element]. *)

(** A DOM element's attribute as an object. See {{: https://developer.mozilla.org/en-US/docs/Web/API/Attr} https://developer.mozilla.org/en-US/docs/Web/API/Attr} *)
module Attr = Yawaramin_BsWebapi_Attr

(** Common WebAPI types and operations. Mostly the ones that are the
    roots of their inheritance hierarchies. *)
module Common = Yawaramin_BsWebapi_Common

(** The most general base class from which all objects in a [Document]
    inherit. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/Element}https://developer.mozilla.org/en-US/docs/Web/API/Element} *)
module Element = Yawaramin_BsWebapi_Element

(** Interface implemented by objects that can receive events and may have
    listeners for them. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/EventTarget}https://developer.mozilla.org/en-US/docs/Web/API/EventTarget} *)
module EventTarget = Yawaramin_BsWebapi_EventTarget

(** Generic collection (array-like object similar to arguments) of
    elements (in document order) and methods and properties for selecting
    from the list. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection}https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection} *)
module HTMLCollection = Yawaramin_BsWebapi_HTMLCollection

(** Standard way to produce a sequence of values (either finite or
    infinite). See
    {{:https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterator_protocol}https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterator_protocol} *)
module Iterator = Yawaramin_BsWebapi_Iterator

(** A collection of [Attr] objects. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap}https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap} *)
module NamedNodeMap = Yawaramin_BsWebapi_NamedNodeMap

(** Interface from which a number of DOM API object types inherit. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/Node}https://developer.mozilla.org/en-US/docs/Web/API/Node} *)
module Node = Yawaramin_BsWebapi_Node

(** Collections of nodes such as those returned by properties such as
    [Node.childNodes] and the [document.querySelectorAll()] method. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NodeList}https://developer.mozilla.org/en-US/docs/Web/API/NodeList} *)
module NodeList = Yawaramin_BsWebapi_NodeList

(** Methods that are particular to [Node] objects that can have a parent,
    but not suitable for [DocumentType]. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode}https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode} *)
module NonDocumentTypeChildNode =
  Yawaramin_BsWebapi_NonDocumentTypeChildNode

(** Methods and properties that are common to all types of Node objects
    that can have children. See
    {{:https://developer.mozilla.org/en-US/docs/Web/API/ParentNode}https://developer.mozilla.org/en-US/docs/Web/API/ParentNode} *)
module ParentNode = Yawaramin_BsWebapi_ParentNode
