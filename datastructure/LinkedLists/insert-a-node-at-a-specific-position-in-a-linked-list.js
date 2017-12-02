/*
  Insert Node at a given position in a linked list 
  head can be NULL 
  First element in the linked list is at position 0
  Node is defined as
  var Node = function(data) {
    this.data = data;
    this.next = null;
  }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function insert(head, data, position) {
    if (head === null) {
        head = new Node(data);
    }
    else if (position === 0)
    {
        var node = new Node(data);
        node.next = head;
        head = node;
    }
    else{
        var node = new Node(data);
        tmp = head;
        for(var i=0; i < position-1 && tmp.next !== null;i++ )
        {
            tmp = tmp.next;
        }
        var a = tmp.next;
        tmp.next = node;
        node.next = a;
    }
    return head;
}