# MQL5 debugging notes

Use a small, observable test surface:

- log the initialization result;
- validate symbol and timeframe assumptions;
- report missing files or invalid handles;
- keep `Experts` and `Journal` output with the test case;
- separate compile errors from runtime errors.

Never include broker credentials, customer files, private URLs, authorization tokens, or commercial source in a public reproduction.
