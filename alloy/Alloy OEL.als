sig Train {}

sig Barrier {
    isOpen: one Status
}

abstract sig Status {}
one sig Open, Closed extends Status {}

sig Sensor {
    detects: set Train
}

fact SafetyRule {
    all t: Train | some t implies all b: Barrier | b.isOpen = Closed
}

run {} for 5
