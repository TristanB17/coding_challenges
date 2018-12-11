const assert = require('chai').assert
const firstFactor = require('../lib/first_factorial')

describe("methods", function() {
  context("array", function() {
    it('can split a number string into an array of intergers', function() {
      assert.deepEqual(firstFactor.numberToArray('475'), [4, 7, 5])
    });
  });
  context('multiplication', function() {
    it('multiplies an array of numbers into a single integer', function(){
      var integerArray = firstFactor.numberToArray('475')
      assert.equal(firstFactor.multiplyTogether(integerArray), 140)
    });
  });
  context('ranges', function() {
    it('makes array from 1 to number, multiplies result', function(){
      var number = 8
      assert.equal(firstFactor.multiplyArrayRange(number), 40320)
    });
  });
  context('combined', function() {
    it('completes the challenge', function(){
      var numberString = '475'
      assert.equal(firstFactor.combinedMethods(numberString), 140)
    });
    it('completes the challenge using recursion', function(){
      var number = 8
      assert.equal(firstFactor.recursiveSolution(number), 40320)
    });
  });
});
