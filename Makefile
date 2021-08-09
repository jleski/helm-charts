release: clean package upload
clean:
	rm -fr /.deploy >/dev/null 2>&1
package:
	helm package ./charts/*/* --destination ./.deploy
upload:
	# note: cr uses configuration and token from ~/.cr.yaml
	cr upload --config ~/.cr.yaml --owner jleski --git-repo helm-charts -p ./.deploy
