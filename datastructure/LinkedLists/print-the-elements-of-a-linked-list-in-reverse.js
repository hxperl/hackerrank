/*
    Print elements of a linked list in reverse order as standard output
    head pointer could be NULL as well for empty list
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function reversePrint(head) {
    var tmp = head;
    var arr = [];
    while (tmp !== null){
        arr.push(tmp.data);
        tmp = tmp.next;
    }
    for (var i=arr.length-1; i>=0 ; i--) {
        console.log(arr[i]);
    }
}