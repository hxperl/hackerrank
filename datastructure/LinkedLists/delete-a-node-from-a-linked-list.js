/*
    Delete Node at a given position in a linked list
    head pointer input could be NULL as well for empty list
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function deleteNode(head, position) {
    var tmp = head;
    if (position === 0 && tmp.next === null) {
        head = null;
    }
    else if (position === 0) {
        head = tmp.next;
    }
    else {
        for (var i=0; i< position-1; i++)
        {
            tmp = tmp.next;
        }
        tmp.next = tmp.next.next;
        
    }
    
    return head;
}
