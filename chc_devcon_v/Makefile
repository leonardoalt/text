all:
	dot images/example_1_state_machine.dot -T png -o images/state_machine.png
	dot images/example_1_state_machine_transition.dot -T png -o images/state_machine_transition.png
	dot images/example_1_state_machine_reachability.dot -T png -o images/state_machine_reachability.png
	dot images/example_1_state_machine_unreachable.dot -T png -o images/state_machine_unreachable.png
	dot images/example_1_state_machine_counterexample.dot -T png -o images/state_machine_counterexample.png
	dot images/example_1_state_machine_counterexample_path_constructor.dot -T png -o images/state_machine_counterexample_path_constructor.png
	dot images/example_1_state_machine_counterexample_path_1.dot -T png -o images/state_machine_counterexample_path_1.png
	dot images/example_1_state_machine_counterexample_path_2.dot -T png -o images/state_machine_counterexample_path_2.png
	dot images/example_1_state_machine_counterexample_path_3.dot -T png -o images/state_machine_counterexample_path_3.png
	xelatex chc
	#bibtex chc
	#xelatex chc
	#xelatex chc

clean:
	rm chc.vrb chc.toc chc.snm chc.out chc.nav chc.aux chc.log chc.blg chc.bbl
