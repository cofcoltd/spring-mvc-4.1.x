/**
 * @author jiaming
 */

var work;

function handler() {

	if (typeof(Worker) != "undefined") {
		console.log('Yes! Web worker support!');
		
		work = new Worker('async/work.js'); //启动一个异步线程  
		
		work.postMessage('async');
		
	} else {
		console.log('Sorry! No Web Worker support..');
	}

	
}