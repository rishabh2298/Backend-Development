package com.springbatch;

import javax.sql.DataSource;

import org.springframework.batch.core.configuration.support.DefaultBatchConfiguration;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.batch.BatchProperties;
import org.springframework.boot.sql.init.DatabaseInitializationMode;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.support.JdbcTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

@Configuration
//@EnableBatchProcessing
@PropertySource("classpath:db.properties")
public class TemperatureSensorBatchConfiguration extends DefaultBatchConfiguration {

	@Bean
	public DataSource dataSource(@Value("${db.driverClassName}") String driverName, 
			@Value("${db.url}") String url, 
			@Value("${db.username}") String username, 
			@Value("${db.password}") String password) {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(driverName);
		dataSource.setUrl(url);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		
		return dataSource;
	}

	@Bean
	public PlatformTransactionManager transactionManager(DataSource dataSource) {
		JdbcTransactionManager transactionManager = new JdbcTransactionManager();
		transactionManager.setDataSource(dataSource);
		return transactionManager;
	}
	
	@Bean
	public BatchProperties batchProperties(@Value("${batch.db.initialize-schema}") DatabaseInitializationMode initializationMode) {
		BatchProperties batchProperties = new BatchProperties();
		batchProperties.getJdbc().setInitializeSchema(initializationMode);
		return batchProperties;
	}
}
