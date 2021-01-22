Extension { #name : #Integer }

{ #category : #'*Die' }
Integer >> D10 [
	
	| handle | 
	handle := DieHandle new.
	1 to: self do: [ :each |handle addDie: (Die withFaces: 10) ].
	^ handle  
]

{ #category : #'*Die' }
Integer >> D20 [	
			
	| handle | 
	handle := DieHandle new.
	1 to: self do: [ :each |handle addDie: (Die withFaces: 20) ].
	^ handle  
]

{ #category : #'*Die' }
Integer >> D4 [
			
	| handle | 
	handle := DieHandle new.
	1 to: self do: [ :each |handle addDie: (Die withFaces: 4) ].
	^ handle  
]

{ #category : #'*Die' }
Integer >> D6 [
			
	| handle | 
	handle := DieHandle new.
	1 to: self do: [ :each |handle addDie: (Die withFaces: 6) ].
	^ handle  
]
