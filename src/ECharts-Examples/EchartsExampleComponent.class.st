Class {
	#name : #EchartsExampleComponent,
	#superclass : #WAComponent,
	#category : #'ECharts-Examples'
}

{ #category : #accessing }
EchartsExampleComponent >> renderContentOn: canvas [
	canvas heading
		level1;
		with: [ canvas text: 'Apache ECharts Examples' ]
]
