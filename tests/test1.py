import os.path
import compute_highest_affinity

site_list = ["a.com", "b.com", "a.com", "b.com", "a.com", "c.com"]
user_list = ["andy", "andy", "bob", "bob", "charlie", "charlie"]
time_list = [
    1238972321, 1238972456, 1238972618, 1238972899, 1248472489, 1258861829
]

computed_result = compute_highest_affinity.highest_affinity(
    site_list, user_list, time_list)
expected_result = ("a.com", "b.com")

assert computed_result == expected_result
# need nocapture option to see this output
# py -m nose --nocapture
print(
    "Successfully passed {}!".format(os.path.basename(__file__).split(".")[0]))
