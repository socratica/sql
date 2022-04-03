log_file = /tmp/sakila-postgresql-session.log
tables = earthquake female_names last_names male_names songs
only_data_dir = data/without-headers

$(tables): %: data/%.csv
	mkdir -p $(only_data_dir)
	tail -n +2 $< > $(only_data_dir)/$@.csv
	psql -c "\copy $@ FROM $(only_data_dir)/$@.csv delimiter ',' csv"

build: src/ddl/schema.sql
	psql --quiet --log-file=$(log_file) < $<

install: $(tables)
	rm -rf $(only_data_dir)

uninstall: src/ddl/delete-data.sql
	psql --quiet --log-file=$(log_file) < $<

clean: src/ddl/drop-objects.sql
	psql --quiet --log-file=$(log_file) < $<
