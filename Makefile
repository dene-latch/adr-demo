
include help.Makefile

dcr = docker-compose run --rm
adr = ${dcr} adr sh -c

############## image ##############
	
build: 				##@a--image docker-compose build
	@docker-compose build --no-cache adr


shell:				##@a--image shell
	@${dcr} adr sh

############## adr ##############

	
init: 	##@b--adr init
	@${adr} 'adr init doc/architecture/decisions'

graph:  ##@b--adr graph
	@${adr} 'adr generate graph > docs/adr/outputs/graph.dot && dot -Tpng docs/adr/outputs/graph.dot -odocs/adr/outputs/graph.png'

toc:    ##@b--adr toc
	@${adr} 'adr generate toc'


.PHONY: 
