# stripe-cli-scripts
Helper scripts to work with stripe cli for testing and development.

If you have multiple end points, or want to finish the trial now and trigger payments with stripe. Here are some helpful scripts we use internally to do so

# end_trial.sh

Will end the trial for given Stripe subscription ID,  trigger to finalize the invoice and force pay now.
We use this this script for testing
Run: 
./end_trial.sh sub_id

# bulk_events.sh
Will start stripe cli N times in background using mapping file. 
Mapping file format is event|endpoint per line, you can set comman saparate list of events to map single endpoint
