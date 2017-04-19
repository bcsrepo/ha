package org._4bc.homeservice;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class HAServiceApplication extends Application<HAServiceConfiguration> {

    public static void main(final String[] args) throws Exception {
        new HAServiceApplication().run(args);
    }

    @Override
    public String getName() {
        return "HAService";
    }

    @Override
    public void initialize(final Bootstrap<HAServiceConfiguration> bootstrap) {
        // TODO: application initialization
    }

    @Override
    public void run(final HAServiceConfiguration configuration,
                    final Environment environment) {
        // TODO: implement application
    }

}
