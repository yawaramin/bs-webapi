(**)

type this = [Yawaramin_BsWebapi_EventTarget.this | `node]
type 'a t = ([> this] as 'a) Yawaramin_BsWebapi_Common.t

external baseURI: 'a t -> string = "" [@@bs.get]
external childNodes: 'a t -> 'b t array = "" [@@bs.get]
external firstChild: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external lastChild: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external nextSibling: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external nodeName: 'a t -> string = "" [@@bs.get]

module Type: sig
  val element: int
  val text: int
  val processingInstruction: int
  val comment: int
  val document: int
  val documentType: int
  val documentFragment: int
end

(** Possible return values are in {!module:Yawaramin_BsWebapi_Node.Type}. *)
external nodeType: 'a t -> int = "" [@@bs.get]
external nodeValue: 'a t -> string = "" [@@bs.get]
external setNodeValue: 'a t -> string -> unit = "nodeValue" [@@bs.set]
external ownerDocument:
  'a t -> [< this | `document] Yawaramin_BsWebapi_Common.t Js.nullable =
  "" [@@bs.get]

external parentNode: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external parentElement: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external previousSibling: 'a t -> 'b t Js.nullable = "" [@@bs.get]
external textContent: 'a t -> string Js.nullable = "" [@@bs.get]
external setTextContent: 'a t -> string -> unit =
  "textContent" [@@bs.set]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external appendChild: 'b t -> 'b t = "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external cloneNode: ?deep:Js.boolean -> 'a t = "" [@@bs.send.pipe: 'a t]

module DocumentPosition: sig
  val disconnected: int
  val preceding: int
  val following: int
  val contains: int
  val containedBy: int
  val implementationSpecific: int
end

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value).

    Possible return values are in
    {!module:Yawaramin_BsWebapi_Node.DocumentPosition}. *)
external compareDocumentPosition: 'b t -> int = "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external contains: 'b t -> Js.boolean = "" [@@bs.send.pipe: 'a t]
external hasChildNodes: 'a t -> Js.boolean = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external insertBefore:
  newNode:'b t -> referenceNode:'c t Js.null -> 'b t =
  "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external isDefaultNamespace: string -> Js.boolean =
  "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external isEqualNode: 'a t -> Js.boolean = "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external isSameNode: 'a t -> Js.boolean = "" [@@bs.send.pipe: 'a t]
external lookupPrefix: 'a t -> string Js.nullable = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external lookupNamespaceURI: string Js.null -> string Js.nullable =
  "" [@@bs.send.pipe: 'a t]

external normalize: 'a t -> unit = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external removeChild: 'b t -> 'b t = "" [@@bs.send.pipe: 'a t]

(** [\[\@\@bs.send.pipe: 'a t\]] (last argument is a ['a Node.t] value). *)
external replaceChild: newChild:'c t -> oldChild:'b t -> unit =
  "" [@@bs.send.pipe: 'a t]

(** [cast t] downcasts an [EventTarget] to a [Node]. *)
val cast:
  [< this] Yawaramin_BsWebapi_Common.t ->
  this Yawaramin_BsWebapi_Common.t option
