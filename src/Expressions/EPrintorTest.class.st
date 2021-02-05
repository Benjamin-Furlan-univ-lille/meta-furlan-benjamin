Class {
	#name : #EPrintorTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EPrintorTest >> testAdditionPrintingWithVisitor [
	| ep1 ep2 printor|
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: ((EAddition new right: ep1; left: ep2) acceptVisitor: printor) printString equals: ' ( 7 + 5 )'
]

{ #category : #tests }
EPrintorTest >> testConstantPrintingWithVisitor [
	| ep1 printor|
	ep1 := Econstant new value: 5.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: ((Econstant new value: ep1) acceptVisitor: printor) printString equals: '5'
]

{ #category : #tests }
EPrintorTest >> testMultiplicationPrintingWithVisitor [
	| ep1 ep2 printor|
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: ((EMultiplication new right: ep1; left: ep2) acceptVisitor: printor) printString equals: ' ( 7 * 5 )'
]

{ #category : #tests }
EPrintorTest >> testNegationPrintingWithVisitor [
	| ep1  printor|
	ep1 := Econstant value: 5.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: ((ENegation expression: ep1)  acceptVisitor: printor) printString equals: '-5'
]

{ #category : #tests }
EPrintorTest >> testRaisedToPrintingWithVisitor [
	| ep1 ep2 printor|
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: ((ERaisedTo new right: ep1; left: ep2) acceptVisitor: printor) printString equals: ' ( 7 ^ 5 )'
]

{ #category : #tests }
EPrintorTest >> testVariablePrintingWithVisitor [
	| ep1 printor|
	ep1 := EVariable new id: 'a'.
	printor:= EPrintor new.
	printor stream: (WriteStream with: '') . 
	self assert: (ep1 acceptVisitor: printor) printString equals: 'a'
]
