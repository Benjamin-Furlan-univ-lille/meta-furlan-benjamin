Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Die
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: anInteger [ 
	| d |
	d:= self new.
	d faces: anInteger.
	^ d
]

{ #category : #'as yet unclassified' }
Die >> + aDicable [
^ aDicable sumWithDie:self 
]

{ #category : #'as yet unclassified' }
Die >> face [
	^ faces
	
]

{ #category : #'as yet unclassified' }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [ 
	super initialize.
	faces:=6.
]

{ #category : #'as yet unclassified' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ( ', faces printString , ')'.
]

{ #category : #'as yet unclassified' }
Die >> roll [
	faces:= faces atRandom.
	^ faces
]

{ #category : #'as yet unclassified' }
Die >> sumWithDie: aDie [
^ DieHandle new addDie: self ; addDie: aDie; yourself 
]

{ #category : #'as yet unclassified' }
Die >> sumWithHandle: aDieHandle [
	|hand|
	hand:= DieHandle new.
	hand addDie: self.
	aDieHandle handle do: [ :each | hand addDie: each  ].
	^ hand 
]
