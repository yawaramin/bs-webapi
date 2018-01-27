module Type = struct
  let element = 1
  let text = 3
  let processingInstruction = 7
  let comment = 8
  let document = 9
  let documentType = 10
  let documentFragment = 11
end

module DocumentPosition = struct
  let disconnected = 1
  let preceding = 2
  let following = 4
  let contains = 8
  let containedBy = 16
  let implementationSpecific = 32
end

type this = [Yawaramin_BsWebapi_EventTarget.this | `node]
type 'a subtype = ([> this] as 'a) Yawaramin_BsWebapi_Common.t
type 'a supertype = ([< this] as 'a) Yawaramin_BsWebapi_Common.t

external baseURI: 'a subtype -> string = "" [@@bs.get]
external childNodes: 'a subtype -> 'b supertype array = "" [@@bs.get]
external firstChild: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external lastChild: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external nextSibling: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external nodeName: 'a subtype -> string = "" [@@bs.get]
external nodeType: 'a subtype -> int = "" [@@bs.get]
external nodeValue: 'a subtype -> string = "" [@@bs.get]
external setNodeValue: 'a subtype -> string -> unit = "nodeValue" [@@bs.set]
external ownerDocument: 'a subtype -> [< this | `document] Yawaramin_BsWebapi_Common.t Js.nullable = "" [@@bs.get]
external parentNode: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external parentElement: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external previousSibling: 'a subtype -> 'b supertype Js.nullable = "" [@@bs.get]
external textContent: 'a subtype -> string Js.nullable = "" [@@bs.get]
external setTextContent: 'a subtype -> string -> unit = "textContent" [@@bs.set]
external appendChild: 'b subtype -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external cloneNode: ?deep:Js.boolean -> 'a supertype = "" [@@bs.send.pipe: 'a subtype]
external compareDocumentPosition: 'b subtype -> int = "" [@@bs.send.pipe: 'a subtype]
external contains: 'b subtype -> Js.boolean = "" [@@bs.send.pipe: 'a subtype]
external hasChildNodes: 'a subtype -> Js.boolean = "" [@@bs.send]
external insertBefore: newNode:'b subtype -> referenceNode:'c subtype Js.null -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external isDefaultNamespace: string -> Js.boolean = "" [@@bs.send.pipe: 'a subtype]
external isEqualNode: 'a subtype -> Js.boolean = "" [@@bs.send.pipe: 'a subtype]
external isSameNode: 'a subtype -> Js.boolean = "" [@@bs.send.pipe: 'a subtype]
external lookupPrefix: 'a subtype -> string Js.nullable = "" [@@bs.send]
external lookupNamespaceURI: string Js.null -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]
external normalize: 'a subtype -> unit = "" [@@bs.send]
external removeChild: 'b subtype -> 'b supertype = "" [@@bs.send.pipe: 'a subtype]
external replaceChild: newChild:'c subtype -> oldChild:'b subtype -> unit = "" [@@bs.send.pipe: 'a subtype]

let cast t =
  let module Common = Yawaramin_BsWebapi_Common in
  let t = Common.unsafeCoerce t in

  t |> baseURI
    |> Yawaramin_BsWebapi_Common.unsafeCoerce
    |> Js.Nullable.to_opt
    |> Js.Option.map (fun [@bs] _ -> t)
