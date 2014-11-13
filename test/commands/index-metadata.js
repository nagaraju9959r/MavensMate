'use strict';
var mavensmate 	= require('../../lib/mavensmate');
var chai 				= require('chai');
var exec 				= require('child_process').exec;
var path 				= require('path');
// var sinon 		= require('sinon');

// chai.use(chaiAsPromised);
var assert = chai.assert;
var should = chai.should();

var testClient;

describe('mavensmate index-metadata', function(){
	// var cmd = 'node '+path.join(__dirname, '../bin/mavensmate')+' ';
	
	it('should index metadata from the server', function(done) {
		
		this.timeout(10000);

		testClient = mavensmate.createClient({
			editor: 'sublime',
			headless: true,
			debugging: true
		});

		testClient.setProject('/Users/josephferraro/Development/summer14/force', function(err, response) {
			testClient.executeCommand('index-metadata', function(err, response) {
				//should.equal(err, null);
				//response.should.have.property('result');
				done();
			});
		});
	
	});

});