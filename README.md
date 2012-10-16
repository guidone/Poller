Poller
======

Small javascript library to poll a remote server at regular interval

#Example

	var poller = new Poller();
	poller
		.intervals([1000,5000,10000])
		.checkback(function() {
			// could be anything asynchronous
  		var deferred = $.Deferred();
			$.getJSON('/is/server/ready') // could return this directly
				.done(function(response) {
					deferred.resolve();
					})
				.fail(function() {
					deferred.reject();
					})
			return deferred.promise();
			})
		.callback(function() {
			// checkback succeded and the end of one interval
			// stops the poller and callback
			console.log('Ok')
			})
		.failback(function() {
			// after the third attempt, exits calling the failback
			// function
			console.log('Failed');
			});
		poller.start() // start the process
			.done(function() {
				console.log('Polling ok');
				})
			.fail(function() {
				console.log('Polling failed');
				});

For full documentation read the /docs/index.html 