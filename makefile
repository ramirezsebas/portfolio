gen:
	dart run build_runner build --delete-conflicting-outputs

format:
	dart format --line-length=80 --set-exit-if-changed .