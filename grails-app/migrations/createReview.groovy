databaseChangeLog = {

	changeSet(author: "dan (generated)", id: "1379135170067-2") {
		createTable(tableName: "review") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "reviewPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "game_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "review_date", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "review_text", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "dan (generated)", id: "1379135170067-3") {
		addForeignKeyConstraint(baseColumnNames: "game_id", baseTableName: "review", constraintName: "FKC84EF75895D04A3E", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "game", referencesUniqueColumn: "false")
	}
}
