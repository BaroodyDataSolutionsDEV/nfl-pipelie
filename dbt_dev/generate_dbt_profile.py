import yaml
import pathlib
from dotenv import dotenv_values


env_path = pathlib.Path(__file__).parent.parent.resolve()
script_path = pathlib.Path(__file__).parent.resolve()
config = dotenv_values(f"{env_path}/.env")

dbt_profile = dict(
    nfl_rds = dict(
        target = "warehouse",
        outputs = dict(
            warehosue = dict(
                dbname = "warehouse",
                host = config["rds_host"],
                port = config["rds_port"],
                user = config["rds_user"],
                password = confgig["rds_pass"],
                schema = "warehouse",
                threads = "1",
                type = "postgres"
            )
        )
    )
)

with open(f"{script_path}/profiles.yml", "w") as outfile:
    yaml.dump(dbt_profile, outfile, default_flow_style=False)