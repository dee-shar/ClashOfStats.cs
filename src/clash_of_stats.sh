#!/bin/bash

api="https://api.clashofstats.com/"
user_agent="Dart/2.18 (dart:io)"

function get_players_ranking() {
	# 1 - location: (string): <location - default: global>
	# 2 - level: (integer): <level - default: 0>
	# 3 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/players/trophies?location=${1:-global}&level=${2:-0}&page=${3:-0}" \
		--user-agent "$user_agent"
}

function get_players_war_stars() {
	# 1 - location: (string): <location - default: global>
	# 2 - level: (integer): <level - default: 0>
	# 3 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/players/war-stars?location=${1:-global}&level=${2:-0}&page=${3:-0}" \
		--user-agent "$user_agent"
}

function get_players_attack_wins() {
	# 1 - location: (string): <location - default: global>
	# 2 - level: (integer): <level - default: 0>
	# 3 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/players/attack-wins?location=${1:-global}&level=${2:-0}&page=${3:-0}" \
		--user-agent "$user_agent"
}

function get_players_exp_levels() {
	# 1 - location: (string): <location - default: global>
	# 2 - level: (integer): <level - default: 0>
	# 3 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/players/exp-level?location=${1:-global}&level=${2:-0}&page=${3:-0}" \
		--user-agent "$user_agent"
}

function get_players_capital_gold_contribution() {
	# 1 - location: (string): <location - default: global>
	# 2 - level: (integer): <level - default: 0>
	# 3 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/players/capital-gold-contribution?location=${1:-global}&level=${2:-0}&page=${3:-0}" \
		--user-agent "$user_agent"
}

function get_clans_trophies() {
	# 1 - location: (string): <location - default: global>
	# 2 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/clans/trophies?location=${1:-global}&page=${2:-0}" \
		--user-agent "$user_agent"
}

function get_clans_war_win_streak() {
	# 1 - location: (string): <location - default: global>
	# 2 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/rankings/clans/trophies?location=${1:-global}&page=${2:-0}" \
		--user-agent "$user_agent"
}
