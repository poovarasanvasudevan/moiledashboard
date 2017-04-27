package com.poovarasan.template;

import com.mitchellbosecke.pebble.extension.*;
import com.mitchellbosecke.pebble.operator.BinaryOperator;
import com.mitchellbosecke.pebble.operator.UnaryOperator;
import com.mitchellbosecke.pebble.tokenParser.TokenParser;
import com.poovarasan.template.extension.filters.CamelCase;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by poovarasanv on 18/4/17.
 * Project : mobiledashboard
 */
@Configuration
public class Template extends AbstractExtension {

    @Override
    public List<TokenParser> getTokenParsers() {
        return super.getTokenParsers();
    }


    @Override
    public List<UnaryOperator> getUnaryOperators() {
        return super.getUnaryOperators();
    }

    @Override
    public List<BinaryOperator> getBinaryOperators() {
        return super.getBinaryOperators();
    }

    @Override
    public Map<String, Filter> getFilters() {
        Map<String, Filter> filters = new HashMap<>();
        filters.put("camelCase", new CamelCase());
        return filters;
    }

    @Override
    public Map<String, Test> getTests() {
        return super.getTests();
    }

    @Override
    public Map<String, Function> getFunctions() {
        return super.getFunctions();
    }

    @Override
    public Map<String, Object> getGlobalVariables() {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        Map<String, Object> globalVariables = new HashMap<>();
        globalVariables.put("primaryColor", "blue");
        globalVariables.put("accentColor", "pink");

        if (auth !=null && auth.isAuthenticated()) {
            globalVariables.put("user", auth.getPrincipal());
        }
        return globalVariables;
    }

    @Override
    public List<NodeVisitorFactory> getNodeVisitors() {
        return super.getNodeVisitors();
    }
}
