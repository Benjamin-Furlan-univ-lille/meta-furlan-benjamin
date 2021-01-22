Class {
	#name : #StoneTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StoneTest >> testDrawAgainstStone [
	self assert: (Stone new playAgainstStone: (Element new)) equals: #draw
]

{ #category : #tests }
StoneTest >> testLoosAgainstPaper [
	self assert: (Stone new playAgainstPaper: (Element new)) equals: #paper
]

{ #category : #tests }
StoneTest >> testWinAgainstScissor [
	self assert: (Stone new playAgainstScissors: (Element new)) equals: #stone
]
