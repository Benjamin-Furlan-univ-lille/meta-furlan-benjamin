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
