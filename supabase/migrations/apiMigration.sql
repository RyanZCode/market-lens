-- Enable pg_net if not already active
create extension if not exists pg_net;

-- Trigger the Edge Function once immediately to test data population
-- Note: Using the service role token provided for authentication
select
  net.http_post(
    url:='https://qdamlmhappvpecixuqcb.supabase.co/functions/v1/process-market-alerts',
    headers:='{"Content-Type": "application/json", "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFkYW1sbWhhcHB2cGVjaXh1cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MDMxNDkyOSwiZXhwIjoyMDg1ODkwOTI5fQ.9rPV7YEMGYpzrVTGRwzEEsFLKI9_vPGmqZiNPke-7Ww"}'::jsonb
  );
