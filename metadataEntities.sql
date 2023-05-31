DROP TABLE IF EXISTS [dbo].[metadataEntities];
CREATE TABLE [dbo].[metadataEntities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[metadataControlId] [int] NULL,
	[pipelineParameters] [nvarchar](max) NULL,
	[enabled] [bit] NULL
)


INSERT INTO [dbo].[metadataEntities]
VALUES
    ( 
		1, 
		N'{
			"inputs_fileSystem": "metadata",
			"outputs_fileSystem": "metadata",
			"inputs_folderPath": "source",
			"outputs_folderPath": "sink",
			"fileName": "dboEmployees"
		}', 
		1 
	),
	( 
		1, 
		N'{
			"inputs_fileSystem": "metadata",
			"outputs_fileSystem": "metadata",
			"inputs_folderPath": "source",
			"outputs_folderPath": "sink",
			"fileName": "dboOrders"
		}', 
		1 
	)

SELECT * FROM [dbo].[metadataEntities] WHERE [metadataControlId] = 1 AND [enabled] = 1 
