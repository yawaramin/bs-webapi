module Web = Yawaramin_BsWebapi
let test (elem: 'a Web.Element.supertype) =
  Web.ParentNode.children elem