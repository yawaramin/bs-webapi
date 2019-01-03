module DocumentPosition: sig
  type t = int

  val containedBy: int
  val contains: int
  val disconnected: int
  val implementationSpecific: int
  val following: int
  val preceding: int
end

module Type: sig
  type t = int

  val comment: t
  val document: t
  val documentType: t
  val documentFragment: t
  val element: t
  val processingInstruction: t
  val text: t
end

type 'a t = 'a Yawaramin_BsWebapi_Common.t
type this = [Yawaramin_BsWebapi_EventTarget.this | `node]
type 'a subtype = ([> this] as 'a) t
type 'a supertype = ([< this] as 'a) t

external appendChild: 'b subtype -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external baseURI: 'a subtype -> string = "" [@@bs.get]

(** [cast t] downcasts an [EventTarget] to a [Node]. *)
val cast: 'a supertype -> this t option
external childNodes: 'a subtype -> 'b supertype array = "" [@@bs.get]
external cloneNode: ?deep:bool -> 'a supertype = "" [@@bs.send.pipe: 'a subtype]
external compareDocumentPosition: 'b subtype -> DocumentPosition.t = "" [@@bs.send.pipe: 'a subtype]
external contains: 'b subtype -> bool = "" [@@bs.send.pipe: 'a subtype]
external firstChild: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external hasChildNodes: 'a subtype -> bool = "" [@@bs.send]
external insertBefore: newNode:'b subtype -> referenceNode:'c subtype Js.null -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external isDefaultNamespace: string -> bool = "" [@@bs.send.pipe: 'a subtype] 
external isEqualNode: 'a subtype -> bool = "" [@@bs.send.pipe: 'a subtype]
external isSameNode: 'a subtype -> bool = "" [@@bs.send.pipe: 'a subtype]
external lastChild: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external lookupNamespaceURI: string Js.null -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]
external lookupPrefix: 'a subtype -> string Js.nullable = "" [@@bs.send]
external nextSibling: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external nodeName: 'a subtype -> string = "" [@@bs.get]
external nodeType: 'a subtype -> Type.t = "" [@@bs.get]
external nodeValue: 'a subtype -> string = "" [@@bs.get]
external normalize: 'a subtype -> unit = "" [@@bs.send]
external ownerDocument: 'a subtype -> [< this | `document] t Js.nullable = "" [@@bs.get]
external parentElement: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external parentNode: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external previousSibling: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external removeChild: 'b subtype -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external replaceChild: newChild:'c subtype -> oldChild:'b subtype -> unit = "" [@@bs.send.pipe: 'a subtype]
external setNodeValue: 'a subtype -> string -> unit = "nodeValue" [@@bs.set]
external setTextContent: 'a subtype -> string -> unit = "textContent" [@@bs.set]
external textContent: 'a subtype -> string Js.nullable = "" [@@bs.get]
