module Web = Yawaramin_BsWebapi

let test namedNodeMap =
  Web.NamedNodeMap.getNamedItemNS ~namespace:"ns" ~localName:"id" namedNodeMap
