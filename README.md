# VBox Tools

Утилиты для настройки виртуальной машины в VirtualBox.

## 📦 Скрипты

### `install_vbox_guest_additions.sh`

Скрипт автоматической установки VirtualBox Guest Additions в системах на базе Linux (CentOS, Kali, Ubuntu и др).

#### Возможности:
- Автоматическая установка зависимостей
- Подключение ISO-диска с Additions
- Установка модулей ядра
- Активация общего буфера обмена (clipboard) и drag-and-drop
- Устранение проблем с мышкой и экраном

#### Использование:

chmod +x install_vbox_guest_additions.sh
./install_vbox_guest_additions.sh

Требования:
Установленный VirtualBox Guest Additions ISO (через меню Devices → Insert Guest Additions CD image)

Права sudo

🔧 Дополнительно
Если буфер обмена не работает после установки, попробуйте вручную запустить:

VBoxClient-all
