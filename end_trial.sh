stripe subscriptions update $1 --trial-end=now
sleep 10
INVOICE_ID=`stripe get $1 | jq ".latest_invoice" | sed 's/"//g'`
stripe post /v1/invoices/$INVOICE_ID/finalize
sleep 6
stripe post /v1/invoices/$INVOICE_ID/pay

