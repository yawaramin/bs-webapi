(**)

type t = Yawaramin_BsWebapi_Common.nodeList
type 'a node = 'a Yawaramin_BsWebapi_Node.supertype
type 'a iterator = 'a Yawaramin_BsWebapi_Iterator.t

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). *)
external item: int -> 'a node Js.nullable = "" [@@bs.send.pipe: t]
external length: t -> int = "" [@@bs.get]
external entries: t -> (int * 'a node) iterator = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). Also,
    [callback] must be a BuckleScript-uncurried function with [\[\@bs\]].

    Careful with labelling the arguments. If you forget, the type error
    message won't mention a missing label because it will assume the
    unlabelled argument is the [t] (last) parameter. Here's a correct
    usage: {[
module Web = Yawaramin_BsWebapi
let test (elem: 'a Web.Element.supertype) = elem
  |> Web.ParentNode.querySelectorAll "p"
  |> Web.NodeList.forEach ~callback:(fun \[\@bs\] node _ _ -> Js.log node)
    ]} *)
external forEach: callback:('a node -> int -> t -> unit [@bs]) -> ?thisArg:t -> unit = "" [@@bs.send.pipe: t]
external keys: t -> int iterator = "" [@@bs.send]
external values: t -> 'a node iterator = "" [@@bs.send]
