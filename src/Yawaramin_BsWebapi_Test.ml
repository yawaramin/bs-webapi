module Web = Yawaramin_BsWebapi
let test (elem: 'a Web.Element.supertype) = elem
  |> Web.ParentNode.querySelectorAll "p"
  |> Web.NodeList.forEach ~callback:(fun [@bs] node _ _ -> Js.log node)
