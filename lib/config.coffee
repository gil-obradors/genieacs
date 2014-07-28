###
# Copyright 2013, 2014  Zaid Abdulla
#
# GenieACS is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# GenieACS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with GenieACS.  If not, see <http://www.gnu.org/licenses/>.
###

exports.MONGODB_CONNECTION_URL = 'mongodb://localhost/genieacs'
exports.REDIS_DB = 0
exports.ACS_PORT = 7547 # CWMP port as assigned by IANA
exports.ACS_HTTPS_PORT = 7548
exports.ACS_INTERFACE = '0.0.0.0'
exports.ACS_HTTPS_INTERFACE = '0.0.0.0'
exports.API_PORT = 7557
exports.API_INTERFACE = '0.0.0.0'
exports.FILES_PORT = 7567
exports.FILES_INTERFACE = '0.0.0.0'
exports.FILES_IP = '172.240.21.2' # Used when sending download requests to devices
exports.CACHE_DURATION = 60 # in seconds
exports.PRESETS_CACHE_DURATION = 86400
exports.PRESETS_TIME_PADDING = 1
exports.MONGODB_SOCKET = '/tmp/mongodb-27017.sock'
exports.REDIS_SOCKET = '/tmp/redis.sock'
exports.WORKER_RESPAWN_TIME = 60000
exports.LOG_INFORMS = false
exports.DEBUG_DEVICES = {} # {'202BC1-BM632w-8KA8WA1151100043' : true}
exports.DEVICE_ONLINE_THRESHOLD = 4000
exports.RETRY_DELAY = 300
exports.IGNORE_XML_NAMESPACES = false # Traverse XML using element's local name only
exports.LIBXMLJS_OPTIONS = {} # Options passed directly to libxmljs
exports.SESSION_TIMEOUT = 30
exports.GET_PARAMETER_NAMES_DEPTH_THRESHOLD = 0
exports.TASK_PARAMETERS_BATCH_SIZE = 32

# load configuration
c = require('../config/config')
for k, v of c
  exports[k] = v

# load parameter configurations
exports.PARAMETERS = require('../config/parameters')

# load authentication scripts
exports.auth = require('../config/auth')

exports.CUSTOM_COMMANDS = require('../config/custom_commands')

