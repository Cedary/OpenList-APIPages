#/bin/bash

cp .env.example .env
# 替换.env文件中的变量值
if [ -z "${OPLIST_MAIN_URLS}" ]; then
    echo "MAIN_URLS is not set, skipping replacement in .env."
else
    echo "Replacing MAIN_URLS in .env file..."
    sed -i "s|^MAIN_URLS=.*|MAIN_URLS=${OPLIST_MAIN_URLS}|" ./.env
fi

if [ -z "${OPLIST_ONEDRIVE_UID}" ]; then
    echo "ONEDRIVE_UID is not set, skipping replacement in .env."
else
    echo "Replacing onedrive_uid in .env file..."
    sed -i "s|^onedrive_uid=.*|onedrive_uid=${OPLIST_ONEDRIVE_UID}|" ./.env
fi

if [ -z "${OPLIST_ONEDRIVE_KEY}" ]; then
    echo "ONEDRIVE_KEY is not set, skipping replacement in .env."
else
    echo "Replacing onedrive_key in .env file..."
    sed -i "s|^onedrive_key=.*|onedrive_key=${OPLIST_ONEDRIVE_KEY}|" ./.env
fi

if [ -z "${OPLIST_ALICLOUD_UID}" ]; then
    echo "ALICLOUD_UID is not set, skipping replacement in .env."
else
    echo "Replacing alicloud_uid in .env file..."
    sed -i "s|^alicloud_uid=.*|alicloud_uid=${OPLIST_ALICLOUD_UID}|" ./.env
fi

if [ -z "${OPLIST_ALICLOUD_KEY}" ]; then
    echo "ALICLOUD_KEY is not set, skipping replacement in .env."
else
    echo "Replacing alicloud_key in .env file..."
    sed -i "s|^alicloud_key=.*|alicloud_key=${OPLIST_ALICLOUD_KEY}|" ./.env
fi

if [ -z "${OPLIST_BAIDUYUN_UID}" ]; then
    echo "BAIDUYUN_UID is not set, skipping replacement in .env."
else
    echo "Replacing baiduyun_uid in .env file..."
    sed -i "s|^baiduyun_uid=.*|baiduyun_uid=${OPLIST_BAIDUYUN_UID}|" ./.env
fi

if [ -z "${OPLIST_BAIDUYUN_KEY}" ]; then
    echo "BAIDUYUN_KEY is not set, skipping replacement in .env."
else
    echo "Replacing baiduyun_key in .env file..."
    sed -i "s|^baiduyun_key=.*|baiduyun_key=${OPLIST_BAIDUYUN_KEY}|" ./.env
fi

if [ -z "${OPLIST_BAIDUYUN_EXT}" ]; then
    echo "BAIDUYUN_EXT is not set, skipping replacement in .env."
else
    echo "Replacing baiduyun_ext in .env file..."
    sed -i "s|^baiduyun_ext=.*|baiduyun_ext=${OPLIST_BAIDUYUN_EXT}|" ./.env
fi

if [ -z "${OPLIST_CLOUD115_UID}" ]; then
    echo "CLOUD115_UID is not set, skipping replacement in .env."
else
    echo "Replacing cloud115_uid in .env file..."
    sed -i "s|^cloud115_uid=.*|cloud115_uid=${OPLIST_CLOUD115_UID}|" ./.env
fi

if [ -z "${OPLIST_CLOUD115_KEY}" ]; then
    echo "CLOUD115_KEY is not set, skipping replacement in .env."
else
    echo "Replacing cloud115_key in .env file..."
    sed -i "s|^cloud115_key=.*|cloud115_key=${OPLIST_CLOUD115_KEY}|" ./.env
fi

if [ -z "${OPLIST_GOOGLEUI_UID}" ]; then
    echo "GOOGLEUI_UID is not set, skipping replacement in .env."
else
    echo "Replacing googleui_uid in .env file..."
    sed -i "s|^googleui_uid=.*|googleui_uid=${OPLIST_GOOGLEUI_UID}|" ./.env
fi

if [ -z "${OPLIST_GOOGLEUI_KEY}" ]; then
    echo "GOOGLEUI_KEY is not set, skipping replacement in .env."
else
    echo "Replacing googleui_key in .env file..."
    sed -i "s|^googleui_key=.*|googleui_key=${OPLIST_GOOGLEUI_KEY}|" ./.env
fi

if [ -z "${OPLIST_YANDEXUI_UID}" ]; then
    echo "YANDEXUI_UID is not set, skipping replacement in .env."
else
    echo "Replacing yandexui_uid in .env file..."
    sed -i "s|^yandexui_uid=.*|yandexui_uid=${OPLIST_YANDEXUI_UID}|" ./.env
fi

if [ -z "${OPLIST_YANDEXUI_KEY}" ]; then
    echo "YANDEXUI_KEY is not set, skipping replacement in .env."
else
    echo "Replacing yandexui_key in .env file..."
    sed -i "s|^yandexui_key=.*|yandexui_key=${OPLIST_YANDEXUI_KEY}|" ./.env
fi

if [ -z "${OPLIST_DROPBOXS_UID}" ]; then
    echo "DROPBOXS_UID is not set, skipping replacement in .env."
else
    echo "Replacing dropboxs_uid in .env file..."
    sed -i "s|^dropboxs_uid=.*|dropboxs_uid=${OPLIST_DROPBOXS_UID}|" ./.env
fi

if [ -z "${OPLIST_DROPBOXS_KEY}" ]; then
    echo "DROPBOXS_KEY is not set, skipping replacement in .env."
else
    echo "Replacing dropboxs_key in .env file..."
    sed -i "s|^dropboxs_key=.*|dropboxs_key=${OPLIST_DROPBOXS_KEY}|" ./.env
fi

if [ -z "${OPLIST_QUARKPAN_UID}" ]; then
    echo "QUARKPAN_UID is not set, skipping replacement in .env."
else
    echo "Replacing quarkpan_uid in .env file..."
    sed -i "s|^quarkpan_uid=.*|quarkpan_uid=${OPLIST_QUARKPAN_UID}|" ./.env
fi

if [ -z "${OPLIST_QUARKPAN_KEY}" ]; then
    echo "QUARKPAN_KEY is not set, skipping replacement in .env."
else
    echo "Replacing quarkpan_key in .env file..."
    sed -i "s|^quarkpan_key=.*|quarkpan_key=${OPLIST_QUARKPAN_KEY}|" ./.env
fi


echo "Modified .env file:"
cat ./.env
# 执行node dist/bundle.js
echo "Starting node dist/bundle.js..."
node dist/bundle.js
if [ $? -ne 0 ]; then
    echo "node dist/bundle.js failed, exiting."
    exit 1
fi
