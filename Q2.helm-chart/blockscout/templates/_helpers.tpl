{{/* vim: set filetype=mustache: */}}

{{- define "app.namespaceName" -}}
{{ .Values.namespace | default .Chart.Name }}
{{- end -}}

{{- define "app.namespace" -}}
namespace: {{ include "app.namespaceName" . }}
{{- end -}}

{{- define "app.strategy" -}}
strategy:
  rollingUpdate:
    maxSurge: 1
    maxUnavailable: 1
  type: RollingUpdate
{{- end -}}

{{/* backend */}}

{{- define "backend.resources" -}}
resources:
{{ toYaml .Values.backend.resources | indent 2 }}
{{- end -}}

{{- define "backend.envs" -}}
- name: ACCOUNT_CLOAK_KEY
  valueFrom:
    configMapKeyRef:
      key: ACCOUNT_CLOAK_KEY
      name: envs-common-blockscout-env
- name: ACCOUNT_ENABLED
  valueFrom:
    configMapKeyRef:
      key: ACCOUNT_ENABLED
      name: envs-common-blockscout-env
- name: ACCOUNT_REDIS_URL
  valueFrom:
    configMapKeyRef:
      key: ACCOUNT_REDIS_URL
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_BY_IP
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_BY_IP
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_BY_IP_TIME_INTERVAL
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_BY_IP_TIME_INTERVAL
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_BY_KEY
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_BY_KEY
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_BY_WHITELISTED_IP
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_BY_WHITELISTED_IP
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_STATIC_API_KEY
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_STATIC_API_KEY
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_TIME_INTERVAL
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_TIME_INTERVAL
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_UI_V2_TOKEN_TTL_IN_SECONDS
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_UI_V2_TOKEN_TTL_IN_SECONDS
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_UI_V2_WITH_TOKEN
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_UI_V2_WITH_TOKEN
      name: envs-common-blockscout-env
- name: API_RATE_LIMIT_WHITELISTED_IPS
  valueFrom:
    configMapKeyRef:
      key: API_RATE_LIMIT_WHITELISTED_IPS
      name: envs-common-blockscout-env
- name: API_V1_READ_METHODS_DISABLED
  valueFrom:
    configMapKeyRef:
      key: API_V1_READ_METHODS_DISABLED
      name: envs-common-blockscout-env
- name: API_V1_WRITE_METHODS_DISABLED
  valueFrom:
    configMapKeyRef:
      key: API_V1_WRITE_METHODS_DISABLED
      name: envs-common-blockscout-env
- name: API_V2_ENABLED
  valueFrom:
    configMapKeyRef:
      key: API_V2_ENABLED
      name: envs-common-blockscout-env
- name: APPS_MENU
  valueFrom:
    configMapKeyRef:
      key: APPS_MENU
      name: envs-common-blockscout-env
- name: BLOCKSCOUT_HOST
  valueFrom:
    configMapKeyRef:
      key: BLOCKSCOUT_HOST
      name: envs-common-blockscout-env
- name: BLOCKSCOUT_PROTOCOL
  valueFrom:
    configMapKeyRef:
      key: BLOCKSCOUT_PROTOCOL
      name: envs-common-blockscout-env
- name: BLOCK_TRANSFORMER
  valueFrom:
    configMapKeyRef:
      key: BLOCK_TRANSFORMER
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_SUM_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_SUM_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_TOKENS_USD_SUM_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_TOKENS_USD_SUM_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_TOKEN_TRANSFERS_COUNTER_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_TOKEN_TRANSFERS_COUNTER_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_TRANSACTIONS_COUNTER_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_TRANSACTIONS_COUNTER_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_TRANSACTIONS_GAS_USAGE_COUNTER_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_TRANSACTIONS_GAS_USAGE_COUNTER_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_ADDRESS_WITH_BALANCES_UPDATE_INTERVAL
  valueFrom:
    configMapKeyRef:
      key: CACHE_ADDRESS_WITH_BALANCES_UPDATE_INTERVAL
      name: envs-common-blockscout-env
- name: CACHE_AVERAGE_BLOCK_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_AVERAGE_BLOCK_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_BLOCK_COUNT_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_BLOCK_COUNT_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_MARKET_HISTORY_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_MARKET_HISTORY_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_TOKEN_HOLDERS_COUNTER_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_TOKEN_HOLDERS_COUNTER_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_TOKEN_TRANSFERS_COUNTER_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_TOKEN_TRANSFERS_COUNTER_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_TOTAL_GAS_USAGE_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_TOTAL_GAS_USAGE_PERIOD
      name: envs-common-blockscout-env
- name: CACHE_TXS_COUNT_PERIOD
  valueFrom:
    configMapKeyRef:
      key: CACHE_TXS_COUNT_PERIOD
      name: envs-common-blockscout-env
- name: CHAIN_ID
  valueFrom:
    configMapKeyRef:
      key: CHAIN_ID
      name: envs-common-blockscout-env
- name: CHECKSUM_ADDRESS_HASHES
  valueFrom:
    configMapKeyRef:
      key: CHECKSUM_ADDRESS_HASHES
      name: envs-common-blockscout-env
- name: CHECKSUM_FUNCTION
  valueFrom:
    configMapKeyRef:
      key: CHECKSUM_FUNCTION
      name: envs-common-blockscout-env
- name: COIN
  valueFrom:
    configMapKeyRef:
      key: COIN
      name: envs-common-blockscout-env
- name: COIN_BALANCE_HISTORY_DAYS
  valueFrom:
    configMapKeyRef:
      key: COIN_BALANCE_HISTORY_DAYS
      name: envs-common-blockscout-env
- name: COIN_NAME
  valueFrom:
    configMapKeyRef:
      key: COIN_NAME
      name: envs-common-blockscout-env
- name: CONTRACT_MAX_STRING_LENGTH_WITHOUT_TRIMMING
  valueFrom:
    configMapKeyRef:
      key: CONTRACT_MAX_STRING_LENGTH_WITHOUT_TRIMMING
      name: envs-common-blockscout-env
- name: CONTRACT_VERIFICATION_ALLOWED_SOLIDITY_EVM_VERSIONS
  valueFrom:
    configMapKeyRef:
      key: CONTRACT_VERIFICATION_ALLOWED_SOLIDITY_EVM_VERSIONS
      name: envs-common-blockscout-env
- name: CONTRACT_VERIFICATION_ALLOWED_VYPER_EVM_VERSIONS
  valueFrom:
    configMapKeyRef:
      key: CONTRACT_VERIFICATION_ALLOWED_VYPER_EVM_VERSIONS
      name: envs-common-blockscout-env
- name: DATABASE_URL
  valueFrom:
    configMapKeyRef:
      key: DATABASE_URL
      name: envs-common-blockscout-env
- name: DECODE_NOT_A_CONTRACT_CALLS
  valueFrom:
    configMapKeyRef:
      key: DECODE_NOT_A_CONTRACT_CALLS
      name: envs-common-blockscout-env
- name: DISABLE_CATCHUP_INDEXER
  valueFrom:
    configMapKeyRef:
      key: DISABLE_CATCHUP_INDEXER
      name: envs-common-blockscout-env
- name: DISABLE_EXCHANGE_RATES
  valueFrom:
    configMapKeyRef:
      key: DISABLE_EXCHANGE_RATES
      name: envs-common-blockscout-env
- name: DISABLE_INDEXER
  valueFrom:
    configMapKeyRef:
      key: DISABLE_INDEXER
      name: envs-common-blockscout-env
- name: DISABLE_REALTIME_INDEXER
  valueFrom:
    configMapKeyRef:
      key: DISABLE_REALTIME_INDEXER
      name: envs-common-blockscout-env
- name: DISABLE_WEBAPP
  valueFrom:
    configMapKeyRef:
      key: DISABLE_WEBAPP
      name: envs-common-blockscout-env
- name: DISPLAY_TOKEN_ICONS
  valueFrom:
    configMapKeyRef:
      key: DISPLAY_TOKEN_ICONS
      name: envs-common-blockscout-env
- name: ECTO_USE_SSL
  valueFrom:
    configMapKeyRef:
      key: ECTO_USE_SSL
      name: envs-common-blockscout-env
- name: EIP_1559_ELASTICITY_MULTIPLIER
  valueFrom:
    configMapKeyRef:
      key: EIP_1559_ELASTICITY_MULTIPLIER
      name: envs-common-blockscout-env
- name: EMISSION_FORMAT
  valueFrom:
    configMapKeyRef:
      key: EMISSION_FORMAT
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_DISABLE_ARCHIVE_BALANCES
  valueFrom:
    configMapKeyRef:
      key: ETHEREUM_JSONRPC_DISABLE_ARCHIVE_BALANCES
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_HTTP_URL
  valueFrom:
    configMapKeyRef:
      key: ETHEREUM_JSONRPC_HTTP_URL
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_TRACE_URL
  valueFrom:
    configMapKeyRef:
      key: ETHEREUM_JSONRPC_TRACE_URL
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_TRANSPORT
  valueFrom:
    configMapKeyRef:
      key: ETHEREUM_JSONRPC_TRANSPORT
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_VARIANT
  valueFrom:
    configMapKeyRef:
      key: ETHEREUM_JSONRPC_VARIANT
      name: envs-common-blockscout-env
- name: ETHEREUM_JSONRPC_WS_URL
  value: ws://host.docker.internal:8545/
- name: EXCHANGE_RATES_COIN
  valueFrom:
    configMapKeyRef:
      key: EXCHANGE_RATES_COIN
      name: envs-common-blockscout-env
- name: EXTERNAL_APPS
  valueFrom:
    configMapKeyRef:
      key: EXTERNAL_APPS
      name: envs-common-blockscout-env
- name: FETCH_REWARDS_WAY
  valueFrom:
    configMapKeyRef:
      key: FETCH_REWARDS_WAY
      name: envs-common-blockscout-env
- name: FOOTER_LINK_TO_OTHER_EXPLORERS
  valueFrom:
    configMapKeyRef:
      key: FOOTER_LINK_TO_OTHER_EXPLORERS
      name: envs-common-blockscout-env
- name: FOOTER_LOGO
  valueFrom:
    configMapKeyRef:
      key: FOOTER_LOGO
      name: envs-common-blockscout-env
- name: FOOTER_OTHER_EXPLORERS
  valueFrom:
    configMapKeyRef:
      key: FOOTER_OTHER_EXPLORERS
      name: envs-common-blockscout-env
- name: HEART_BEAT_TIMEOUT
  valueFrom:
    configMapKeyRef:
      key: HEART_BEAT_TIMEOUT
      name: envs-common-blockscout-env
- name: HIDE_BLOCK_MINER
  valueFrom:
    configMapKeyRef:
      key: HIDE_BLOCK_MINER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_INTERNAL_TRANSACTIONS_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_INTERNAL_TRANSACTIONS_FETCHER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_PENDING_TRANSACTIONS_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_PENDING_TRANSACTIONS_FETCHER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_TOKEN_INSTANCE_LEGACY_SANITIZE_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_TOKEN_INSTANCE_LEGACY_SANITIZE_FETCHER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_TOKEN_INSTANCE_REALTIME_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_TOKEN_INSTANCE_REALTIME_FETCHER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_TOKEN_INSTANCE_RETRY_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_TOKEN_INSTANCE_RETRY_FETCHER
      name: envs-common-blockscout-env
- name: INDEXER_DISABLE_TOKEN_INSTANCE_SANITIZE_FETCHER
  valueFrom:
    configMapKeyRef:
      key: INDEXER_DISABLE_TOKEN_INSTANCE_SANITIZE_FETCHER
      name: envs-common-blockscout-env
- name: IPC_PATH
  valueFrom:
    configMapKeyRef:
      key: IPC_PATH
      name: envs-common-blockscout-env
- name: JSON_RPC
  valueFrom:
    configMapKeyRef:
      key: JSON_RPC
      name: envs-common-blockscout-env
- name: LOGO
  valueFrom:
    configMapKeyRef:
      key: LOGO
      name: envs-common-blockscout-env
- name: MAINTENANCE_ALERT_MESSAGE
  valueFrom:
    configMapKeyRef:
      key: MAINTENANCE_ALERT_MESSAGE
      name: envs-common-blockscout-env
- name: MAX_SIZE_UNLESS_HIDE_ARRAY
  valueFrom:
    configMapKeyRef:
      key: MAX_SIZE_UNLESS_HIDE_ARRAY
      name: envs-common-blockscout-env
- name: MICROSERVICE_ETH_BYTECODE_DB_INTERVAL_BETWEEN_LOOKUPS
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_ETH_BYTECODE_DB_INTERVAL_BETWEEN_LOOKUPS
      name: envs-common-blockscout-env
- name: MICROSERVICE_ETH_BYTECODE_DB_MAX_LOOKUPS_CONCURRENCY
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_ETH_BYTECODE_DB_MAX_LOOKUPS_CONCURRENCY
      name: envs-common-blockscout-env
- name: MICROSERVICE_SC_VERIFIER_ENABLED
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_SC_VERIFIER_ENABLED
      name: envs-common-blockscout-env
- name: MICROSERVICE_SC_VERIFIER_TYPE
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_SC_VERIFIER_TYPE
      name: envs-common-blockscout-env
- name: MICROSERVICE_SC_VERIFIER_URL
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_SC_VERIFIER_URL
      name: envs-common-blockscout-env
- name: MICROSERVICE_SIG_PROVIDER_ENABLED
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_SIG_PROVIDER_ENABLED
      name: envs-common-blockscout-env
- name: MICROSERVICE_SIG_PROVIDER_URL
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_SIG_PROVIDER_URL
      name: envs-common-blockscout-env
- name: MICROSERVICE_VISUALIZE_SOL2UML_ENABLED
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_VISUALIZE_SOL2UML_ENABLED
      name: envs-common-blockscout-env
- name: MICROSERVICE_VISUALIZE_SOL2UML_URL
  valueFrom:
    configMapKeyRef:
      key: MICROSERVICE_VISUALIZE_SOL2UML_URL
      name: envs-common-blockscout-env
- name: NETWORK
  valueFrom:
    configMapKeyRef:
      key: NETWORK
      name: envs-common-blockscout-env
- name: NETWORK_PATH
  valueFrom:
    configMapKeyRef:
      key: NETWORK_PATH
      name: envs-common-blockscout-env
- name: POOL_SIZE
  valueFrom:
    configMapKeyRef:
      key: POOL_SIZE
      name: envs-common-blockscout-env
- name: POOL_SIZE_API
  valueFrom:
    configMapKeyRef:
      key: POOL_SIZE_API
      name: envs-common-blockscout-env
- name: PORT
  valueFrom:
    configMapKeyRef:
      key: PORT
      name: envs-common-blockscout-env
- name: RELEASE_LINK
  valueFrom:
    configMapKeyRef:
      key: RELEASE_LINK
      name: envs-common-blockscout-env
- name: RE_CAPTCHA_CLIENT_KEY
  valueFrom:
    configMapKeyRef:
      key: RE_CAPTCHA_CLIENT_KEY
      name: envs-common-blockscout-env
- name: RE_CAPTCHA_DISABLED
  valueFrom:
    configMapKeyRef:
      key: RE_CAPTCHA_DISABLED
      name: envs-common-blockscout-env
- name: RE_CAPTCHA_SECRET_KEY
  valueFrom:
    configMapKeyRef:
      key: RE_CAPTCHA_SECRET_KEY
      name: envs-common-blockscout-env
- name: RE_CAPTCHA_V3_CLIENT_KEY
  valueFrom:
    configMapKeyRef:
      key: RE_CAPTCHA_V3_CLIENT_KEY
      name: envs-common-blockscout-env
- name: RE_CAPTCHA_V3_SECRET_KEY
  valueFrom:
    configMapKeyRef:
      key: RE_CAPTCHA_V3_SECRET_KEY
      name: envs-common-blockscout-env
- name: SECRET_KEY_BASE
  valueFrom:
    configMapKeyRef:
      key: SECRET_KEY_BASE
      name: envs-common-blockscout-env
- name: SHOW_ADDRESS_MARKETCAP_PERCENTAGE
  valueFrom:
    configMapKeyRef:
      key: SHOW_ADDRESS_MARKETCAP_PERCENTAGE
      name: envs-common-blockscout-env
- name: SHOW_MAINTENANCE_ALERT
  valueFrom:
    configMapKeyRef:
      key: SHOW_MAINTENANCE_ALERT
      name: envs-common-blockscout-env
- name: SHOW_PRICE_CHART
  valueFrom:
    configMapKeyRef:
      key: SHOW_PRICE_CHART
      name: envs-common-blockscout-env
- name: SHOW_PRICE_CHART_LEGEND
  valueFrom:
    configMapKeyRef:
      key: SHOW_PRICE_CHART_LEGEND
      name: envs-common-blockscout-env
- name: SHOW_TENDERLY_LINK
  valueFrom:
    configMapKeyRef:
      key: SHOW_TENDERLY_LINK
      name: envs-common-blockscout-env
- name: SHOW_TXS_CHART
  valueFrom:
    configMapKeyRef:
      key: SHOW_TXS_CHART
      name: envs-common-blockscout-env
- name: SOURCIFY_INTEGRATION_ENABLED
  valueFrom:
    configMapKeyRef:
      key: SOURCIFY_INTEGRATION_ENABLED
      name: envs-common-blockscout-env
- name: SOURCIFY_REPO_URL
  valueFrom:
    configMapKeyRef:
      key: SOURCIFY_REPO_URL
      name: envs-common-blockscout-env
- name: SOURCIFY_SERVER_URL
  valueFrom:
    configMapKeyRef:
      key: SOURCIFY_SERVER_URL
      name: envs-common-blockscout-env
- name: SUBNETWORK
  valueFrom:
    configMapKeyRef:
      key: SUBNETWORK
      name: envs-common-blockscout-env
- name: SUPPORTED_CHAINS
  valueFrom:
    configMapKeyRef:
      key: SUPPORTED_CHAINS
      name: envs-common-blockscout-env
- name: TENDERLY_CHAIN_PATH
  valueFrom:
    configMapKeyRef:
      key: TENDERLY_CHAIN_PATH
      name: envs-common-blockscout-env
- name: TOKEN_METADATA_UPDATE_INTERVAL
  valueFrom:
    configMapKeyRef:
      key: TOKEN_METADATA_UPDATE_INTERVAL
      name: envs-common-blockscout-env
- name: TXS_HISTORIAN_INIT_LAG
  valueFrom:
    configMapKeyRef:
      key: TXS_HISTORIAN_INIT_LAG
      name: envs-common-blockscout-env
- name: TXS_STATS_DAYS_TO_COMPILE_AT_INIT
  valueFrom:
    configMapKeyRef:
      key: TXS_STATS_DAYS_TO_COMPILE_AT_INIT
      name: envs-common-blockscout-env
- name: TXS_STATS_ENABLED
  valueFrom:
    configMapKeyRef:
      key: TXS_STATS_ENABLED
      name: envs-common-blockscout-env
- name: UNCLES_IN_AVERAGE_BLOCK_TIME
  valueFrom:
    configMapKeyRef:
      key: UNCLES_IN_AVERAGE_BLOCK_TIME
      name: envs-common-blockscout-env
{{- end -}}

{{- define "backend.env" -}}
env: 
{{ include "backend.envs" . | indent 2}}
{{- end -}}

{{/* db */}}
{{- define "db.resources" -}}
resources:
{{ toYaml .Values.db.resources | indent 2 }}
{{- end -}}

{{- define "db.envs" -}}
env:
  - name: POSTGRES_DB
    value: {{ .Values.db.database.db }}
  - name: POSTGRES_PASSWORD
    value: {{ .Values.db.database.password }}
  - name: POSTGRES_USER
    value: {{ .Values.db.database.username }}
{{- end -}}

{{- define "db.probes" -}}
livenessProbe:
  exec:
    command:
      - pg_isready -U {{ .Values.db.database.username }} -d {{ .Values.db.database.db }}
  failureThreshold: 5
  periodSeconds: 10
  timeoutSeconds: 5
{{- end -}}

{{/* frontend */}}
{{- define "frontend.envs" -}}
env:
  - name: NEXT_PUBLIC_API_BASE_PATH
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_API_BASE_PATH
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_API_HOST
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_API_HOST
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_API_PROTOCOL
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_API_PROTOCOL
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_API_SPEC_URL
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_API_SPEC_URL
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_API_WEBSOCKET_PROTOCOL
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_API_WEBSOCKET_PROTOCOL
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_APP_HOST
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_APP_HOST
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_APP_PROTOCOL
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_APP_PROTOCOL
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_HOMEPAGE_CHARTS
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_HOMEPAGE_CHARTS
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_IS_TESTNET
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_IS_TESTNET
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_CURRENCY_DECIMALS
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_CURRENCY_DECIMALS
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_CURRENCY_NAME
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_CURRENCY_NAME
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_CURRENCY_SYMBOL
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_CURRENCY_SYMBOL
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_ID
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_ID
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_NAME
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_NAME
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_NETWORK_SHORT_NAME
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_NETWORK_SHORT_NAME
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_STATS_API_HOST
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_STATS_API_HOST
        name: envs-common-frontend-env
  - name: NEXT_PUBLIC_VISUALIZE_API_HOST
    valueFrom:
      configMapKeyRef:
        key: NEXT_PUBLIC_VISUALIZE_API_HOST
        name: envs-common-frontend-env
{{- end -}}

{{- define "frontend.resources" -}}
resources:
{{ toYaml .Values.frontend.resources | indent 2 }}
{{- end -}}

{{/* proxy */}}
{{- define "proxy.resources" -}}
resources:
{{ toYaml .Values.proxy.resources | indent 2 }}
{{- end -}}

{{/* redis */}}
{{- define "redis.resources" -}}
resources:
{{ toYaml .Values.redis.resources | indent 2 }}
{{- end -}}

{{/* sigprovider */}}
{{- define "sigprovider.resources" -}}
resources:
{{ toYaml .Values.sigprovider.resources | indent 2 }}
{{- end -}}

{{/* statsdb */}}
{{- define "statsdb.resources" -}}
resources:
{{ toYaml .Values.statsdb.resources | indent 2 }}
{{- end -}}

{{- define "statsdb.envs" -}}
env:
  - name: POSTGRES_DB
    value: {{ .Values.statsdb.database.db }}
  - name: POSTGRES_PASSWORD
    value: {{ .Values.statsdb.database.password }}
  - name: POSTGRES_USER
    value: {{ .Values.statsdb.database.username }}
{{- end -}}

{{- define "statsdb.probes" -}}
livenessProbe:
  exec:
    command:
      - pg_isready -U {{ .Values.statsdb.database.username }} -d {{ .Values.statsdb.database.db }}
  failureThreshold: 5
  periodSeconds: 10
  timeoutSeconds: 5
{{- end -}}

{{/* stats */}}
{{- define "stats.envs" -}}
env:
  - name: STATS__BLOCKSCOUT_DB_URL
    valueFrom:
      configMapKeyRef:
        key: STATS__BLOCKSCOUT_DB_URL
        name: envs-common-stats-env
  - name: STATS__CREATE_DATABASE
    valueFrom:
      configMapKeyRef:
        key: STATS__CREATE_DATABASE
        name: envs-common-stats-env
  - name: STATS__DB_URL
    valueFrom:
      configMapKeyRef:
        key: STATS__DB_URL
        name: envs-common-stats-env
  - name: STATS__DEFAULT_SCHEDULE
    valueFrom:
      configMapKeyRef:
        key: STATS__DEFAULT_SCHEDULE
        name: envs-common-stats-env
  - name: STATS__FORCE_UPDATE_ON_START
    valueFrom:
      configMapKeyRef:
        key: STATS__FORCE_UPDATE_ON_START
        name: envs-common-stats-env
  - name: STATS__JAEGER__AGENT_ENDPOINT
    valueFrom:
      configMapKeyRef:
        key: STATS__JAEGER__AGENT_ENDPOINT
        name: envs-common-stats-env
  - name: STATS__JAEGER__ENABLED
    valueFrom:
      configMapKeyRef:
        key: STATS__JAEGER__ENABLED
        name: envs-common-stats-env
  - name: STATS__METRICS__ADDR
    valueFrom:
      configMapKeyRef:
        key: STATS__METRICS__ADDR
        name: envs-common-stats-env
  - name: STATS__METRICS__ENABLED
    valueFrom:
      configMapKeyRef:
        key: STATS__METRICS__ENABLED
        name: envs-common-stats-env
  - name: STATS__METRICS__ROUTE
    valueFrom:
      configMapKeyRef:
        key: STATS__METRICS__ROUTE
        name: envs-common-stats-env
  - name: STATS__RUN_MIGRATIONS
    valueFrom:
      configMapKeyRef:
        key: STATS__RUN_MIGRATIONS
        name: envs-common-stats-env
  - name: STATS__SERVER__GRPC__ADDR
    valueFrom:
      configMapKeyRef:
        key: STATS__SERVER__GRPC__ADDR
        name: envs-common-stats-env
  - name: STATS__SERVER__GRPC__ENABLED
    valueFrom:
      configMapKeyRef:
        key: STATS__SERVER__GRPC__ENABLED
        name: envs-common-stats-env
  - name: STATS__SERVER__HTTP__ADDR
    valueFrom:
      configMapKeyRef:
        key: STATS__SERVER__HTTP__ADDR
        name: envs-common-stats-env
  - name: STATS__SERVER__HTTP__ENABLED
    valueFrom:
      configMapKeyRef:
        key: STATS__SERVER__HTTP__ENABLED
        name: envs-common-stats-env
  - name: STATS__SERVER__HTTP__MAX_BODY_SIZE
    valueFrom:
      configMapKeyRef:
        key: STATS__SERVER__HTTP__MAX_BODY_SIZE
        name: envs-common-stats-env
  - name: STATS__TRACING__ENABLED
    valueFrom:
      configMapKeyRef:
        key: STATS__TRACING__ENABLED
        name: envs-common-stats-env
  - name: STATS__TRACING__FORMAT
    valueFrom:
      configMapKeyRef:
        key: STATS__TRACING__FORMAT
        name: envs-common-stats-env
{{- end -}}

{{- define "stats.resources" -}}
resources:
{{ toYaml .Values.stats.resources | indent 2 }}
{{- end -}}


{{/* visualizer */}}
{{- define "visualizer.envs" -}}
env:
  - name: VISUALIZER__SERVER__GRPC__ENABLED
    valueFrom:
      configMapKeyRef:
        key: VISUALIZER__SERVER__GRPC__ENABLED
        name: envs-common-visualizer-env
{{- end -}}

{{- define "visualizer.resources" -}}
resources:
{{ toYaml .Values.visualizer.resources | indent 2 }}
{{- end -}}

