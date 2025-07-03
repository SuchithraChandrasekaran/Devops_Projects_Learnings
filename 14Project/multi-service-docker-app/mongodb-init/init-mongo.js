// MongoDB initialization script
// This script runs when the MongoDB container starts for the first time

print('========================================');
print('Starting MongoDB initialization...');
print('========================================');

// Switch to the application database
db = db.getSiblingDB('appdb');

// Create application user with read/write permissions
db.createUser({
  user: 'appuser',
  pwd: 'apppassword',
  roles: [
    {
      role: 'readWrite',
      db: 'appdb'
    },
    {
      role: 'dbAdmin',
      db: 'appdb'
    }
  ]
});

print('Created application user: appuser');

// Create collections with validation
db.createCollection('users', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['name', 'email', 'createdAt'],
      properties: {
        name: {
          bsonType: 'string',
          maxLength: 100,
          description: 'User name - required string with max 100 characters'
        },
        email: {
          bsonType: 'string',
          pattern: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$',
          maxLength: 255,
          description: 'User email - required valid email format'
        },
        createdAt: {
          bsonType: 'date',
          description: 'Creation timestamp - required date'
        },
        updatedAt: {
          bsonType: 'date',
          description: 'Update timestamp - optional date'
        }
      }
    }
  },
  validationLevel: 'strict',
  validationAction: 'error'
});

print('Created users collection with validation');

// Create indexes for performance
db.users.createIndex({ email: 1 }, { unique: true, background: true });
db.users.createIndex({ createdAt: 1 }, { background: true });
db.users.createIndex({ name: 1 }, { background: true });

print('Created indexes on users collection');

// Create sessions collection for user sessions (if needed)
db.createCollection('sessions', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['sessionId', 'userId', 'createdAt', 'expiresAt'],
      properties: {
        sessionId: {
          bsonType: 'string',
          description: 'Session ID - required string'
        },
        userId: {
          bsonType: 'objectId',
          description: 'User ID - required ObjectId'
        },
        createdAt: {
          bsonType: 'date',
          description: 'Session creation time - required date'
        },
        expiresAt: {
          bsonType: 'date',
          description: 'Session expiration time - required date'
        },
        data: {
          bsonType: 'object',
          description: 'Session data - optional object'
        }
      }
    }
  }
});

// Create TTL index for sessions (expires after 24 hours)
db.sessions.createIndex({ expiresAt: 1 }, { expireAfterSeconds: 0 });
db.sessions.createIndex({ sessionId: 1 }, { unique: true });

print('Created sessions collection with TTL index');

// Insert sample data for testing
db.users.insertMany([
  {
    name: 'Suchithra Cs',
    email: 'suchithra.c@example.com',
    createdAt: new Date(),
    updatedAt: new Date()
  },
  {
    name: 'Aarthi E',
    email: 'aarthie@example.com',
    createdAt: new Date(),
    updatedAt: new Date()
  },
]);

print('Inserted sample users');

// Create application settings collection
db.createCollection('appSettings', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['key', 'value'],
      properties: {
        key: {
          bsonType: 'string',
          description: 'Setting key - required string'
        },
        value: {
          description: 'Setting value - required, any type'
        },
        description: {
          bsonType: 'string',
          description: 'Setting description - optional string'
        },
        updatedAt: {
          bsonType: 'date',
          description: 'Last update timestamp'
        }
      }
    }
  }
});

// Create unique index on settings key
db.appSettings.createIndex({ key: 1 }, { unique: true });

// Insert default application settings
db.appSettings.insertMany([
  {
    key: 'app_name',
    value: 'Multi-Service Docker Application',
    description: 'Application name',
    updatedAt: new Date()
  },
  {
    key: 'app_version',
    value: '1.0.0',
    description: 'Application version',
    updatedAt: new Date()
  },
  {
    key: 'maintenance_mode',
    value: false,
    description: 'Maintenance mode flag',
    updatedAt: new Date()
  },
  {
    key: 'max_users_per_request',
    value: 50,
    description: 'Maximum users returned per API request',
    updatedAt: new Date()
  },
  {
    key: 'cache_ttl_seconds',
    value: 300,
    description: 'Default cache TTL in seconds',
    updatedAt: new Date()
  }
]);

print('Created app settings with default values');

// Create audit log collection for tracking changes
db.createCollection('auditLog', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['action', 'collection', 'timestamp'],
      properties: {
        action: {
          bsonType: 'string',
          enum: ['create', 'update', 'delete', 'read'],
          description: 'Action performed'
        },
        collection: {
          bsonType: 'string',
          description: 'Collection affected'
        },
        documentId: {
          bsonType: 'objectId',
          description: 'Document ID affected'
        },
        userId: {
          bsonType: 'objectId',
          description: 'User who performed the action'
        },
        timestamp: {
          bsonType: 'date',
          description: 'When the action occurred'
        },
        changes: {
          bsonType: 'object',
          description: 'What changed'
        },
        ip: {
          bsonType: 'string',
          description: 'IP address of the user'
        }
      }
    }
  }
});

// Create indexes for audit log
db.auditLog.createIndex({ timestamp: 1 });
db.auditLog.createIndex({ collection: 1, action: 1 });
db.auditLog.createIndex({ userId: 1 });

print('Created audit log collection');

// Create stats collection for application metrics
db.createCollection('stats', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['date', 'metric', 'value'],
      properties: {
        date: {
          bsonType: 'date',
          description: 'Date of the metric'
        },
        metric: {
          bsonType: 'string',
          description: 'Metric name'
        },
        value: {
          bsonType: 'number',
          description: 'Metric value'
        },
        metadata: {
          bsonType: 'object',
          description: 'Additional metric metadata'
        }
      }
    }
  }
});

// Create indexes for stats
db.stats.createIndex({ date: 1, metric: 1 }, { unique: true });
db.stats.createIndex({ metric: 1 });

print('Created stats collection');

// Display final status
print('========================================');
print('MongoDB initialization completed successfully!');
print('========================================');
print('Collections created:');
print('- users (with validation and indexes)');
print('- sessions (with TTL index)');
print('- appSettings (with default settings)');
print('- auditLog (for change tracking)');
print('- stats (for application metrics)');
print('========================================');
print('Sample data inserted:');
print('- 3 sample users');
print('- 5 application settings');
print('========================================');

// Show database stats
print('Database stats:');
printjson(db.stats());
