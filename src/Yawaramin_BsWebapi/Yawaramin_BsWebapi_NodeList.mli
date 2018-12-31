(**)

type 'a iterator = 'a Yawaramin_BsWebapi_Iterator.t
type 'a node = 'a Yawaramin_BsWebapi_Node.supertype
type t = Yawaramin_BsWebapi_Common.nodeList

external entries: t -> (int * 'a node) iterator = "" [@@bs.send]

(** Careful with labelling the arguments. If you forget, the type error
    message won't mention a missing label because it will assume the
    unlabelled argument is the [t] (last) parameter. Here's a correct
    usage: {[
module Web = Yawaramin_BsWebapi
let test (elem: 'a Web.Element.supertype) = elem
  |> Web.ParentNode.querySelectorAll "p"
  |> Web.NodeList.forEach ~callback:(fun \[\@bs\] node _ _ -> Js.log node)
    ]} *)
external forEach: callback:('a node -> int -> t -> unit [@bs]) -> ?thisArg:t -> unit = "" [@@bs.send.pipe: t]
external item: int -> 'a node Js.nullable = "" [@@bs.send.pipe: t]
external keys: t -> int iterator = "" [@@bs.send]
external length: t -> int = "" [@@bs.get]
external values: t -> 'a node iterator = "" [@@bs.send]
