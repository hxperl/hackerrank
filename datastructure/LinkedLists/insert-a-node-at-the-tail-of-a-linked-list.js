
/*
  Node is defined as
  var Node = function(data) {
      this.data = data;
      this.next = null;
  }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function insert(head, data){ 
    this.head = head;
    this.data = data;
    if (head === null)
    {
        head = new Node();
        head.data = data;
    }
    else{
        node = head;
        while(node.next !== null) {
            node = node.next;
        }
        node.next = new Node();
        node.next.data = data;
    }
    
    return head;
}